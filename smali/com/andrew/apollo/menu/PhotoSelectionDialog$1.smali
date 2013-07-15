.class Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;
.super Ljava/lang/Object;
.source "PhotoSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/menu/PhotoSelectionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/PhotoSelectionDialog;

.field final synthetic val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/PhotoSelectionDialog;Lcom/andrew/apollo/ui/activities/ProfileActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->this$0:Lcom/andrew/apollo/menu/PhotoSelectionDialog;

    iput-object p2, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->selectNewPhoto()V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->selectOldPhoto()V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->fetchAlbumArt()V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;->val$activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->googleSearch()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
