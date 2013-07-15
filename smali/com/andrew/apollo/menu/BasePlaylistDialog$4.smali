.class Lcom/andrew/apollo/menu/BasePlaylistDialog$4;
.super Ljava/lang/Object;
.source "BasePlaylistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/menu/BasePlaylistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$4;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 161
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$4;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-virtual {v0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->onTextChangedListener()V

    .line 144
    return-void
.end method
