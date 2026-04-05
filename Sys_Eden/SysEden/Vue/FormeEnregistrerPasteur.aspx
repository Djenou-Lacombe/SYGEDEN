<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FormeEnregistrerPasteur.aspx.cs" Inherits="SysEden.Vue.FormeEnregistrementPasteur" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

              <div class="card">
              <div class="card-header">
                <h4 class="fw-bold">Formulaire d'enregistrement Pasteur</h4>
              </div>
              <div class="card-body">
               
                  <div class="row g-3">
                    <!-- Colonne 1 -->
                    <%--<div class="col-12 col-md-4">
                      <div class="form-group">
                        <label>Code du membre</label>
                        <asp:TextBox ID="txtCodeMemb" CssClass="form-control" runat="server" />
                      </div>--%>
                      <div class="form-group mt-2">
                        <label>Date Nomination</label>
                        <asp:TextBox ID="txtDateNomination" CssClass="form-control" runat="server" />
                      </div>
                     
                     

                      <div class="form-group mt-2">
                        <label>Statut</label>
                        <select class="form-select" name="statut">
                          <option value="">-- Sélectionner --</option>
                          <option value="Actif">Actif</option>
                          <option value="Inactif">Inactif</option>
                        </select>
                      </div>
                    </div>

                  <div class="mt-3">
                    <button class="btn btn-success" type="submit">Enregistrer</button>
                    <button type="reset" class="btn btn-danger">Annuler</button>
                  </div>
                </form>
              </div>
            </div>


    </main>

</asp:Content>
