const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");

const exportUserPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "attachment; filename=users.pdf");
        
        const doc = new PDFDocument();
        doc.pipe(res);

        doc.BackgroundColor("Black");
        doc.color("White");

        //Title
        doc.fontSize(20).text("Usuários Api", {align: "center"});
        doc.moveDown();

        //Header
        doc.text("Lista de Usuários", {align: "center"});
        doc.moveDown();

        //Table
        doc.fontSize(10);
        doc.text("Nome", {align: "center", margin: [0, 0, 10, 0]});
        doc.moveDown();
        for (let i = 0; i < users.length; i++) {
            doc.text(users[i].name, 10, 30 + i * 15);
            doc.moveDown();
        }

        //Footer
        doc.fontSize(10);
        doc.text("Data: ", {align: "center", margin: [0, 0, 10, 0]});

        users.forEach((user) => {
            doc.text( `${user.id} | ${user.name} | ${user.email} | ${user.password}`, 10, doc.page.height - 10);
            doc.moveDown();
        });

        doc.end();

    } catch (error) {
        res.status(500).json({message: "Erro ao exportar o PDF", error: error});
    }
};

module.exports = {exportUserPDF}