<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="CapaPresentacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Categorias --Admin--</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12 m-auto">
                    <div class="card mt-4">
                        <div class="card-header bg-black text-white">
                            <div class="row">
                                <div class="col-8">
                                    <h5 class="card-title">Lista de categorias</h5>
                                </div>
                                <div class="col-4">
                                    <button type="button" class="btn btn-secondary float-end"
                                        data-bs-toggle="modal" data-bs-target="#modal-insertar-categoria">Registrar</button>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <asp:GridView ID="GridViewCategorias" CssClass="table border-0 table-striped table-hover" runat="server"></asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Fin container-->
        <div
            class="modal fade"
            id="modal-insertar-categoria"
            tabindex="-1"
            aria-labelledby="modal-insertar"
            aria-hidden="true">

            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Registro de categorias
                        </h5>
                        <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>

                    <div class="modal-body">
                        <h6>Formulario de registro</h6>

                        <div class="row">
                            <div
                                class="col-lg-6 col-md-8 col-sm-12">

                                <div class="mb-3">
                                    <label class="form-label">Nombre</label>
                                    <asp:TextBox
                                        runat="server"
                                        ID="TextBoxNombreCategoria"
                                        CssClass="form-control"
                                        placeholder="Ingresa el nombre de la categoria"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Descripción</label>
                                    <asp:TextBox
                                        runat="server"
                                        ID="TextBoxDescripcionCategoria"
                                        CssClass="form-control"
                                        TextMode="MultiLine"
                                        Rows="5"
                                        placeholder="Ingresa la descripción de la categoria"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-secondary" 
                            data-bs-dismiss="modal">Cerrar</button>

                        <asp:Button
                            ID="ButtonGudarCategoria"
                            Text="Guardar"
                            CssClass="btn btn-primary"
                            runat="server"
                            OnClick="ButtonGudarCategoria_Click"/>
                    </div>
                </div>
            </div>

        </div>
        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>
