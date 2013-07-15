.class public abstract Lcom/andrew/apollo/menu/BasePlaylistDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BasePlaylistDialog.java"


# instance fields
.field protected mDefaultname:Ljava/lang/String;

.field protected mPlaylist:Landroid/widget/EditText;

.field protected mPlaylistDialog:Landroid/app/AlertDialog;

.field protected mPrompt:Ljava/lang/String;

.field protected mSaveButton:Landroid/widget/Button;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/andrew/apollo/menu/BasePlaylistDialog$4;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog$4;-><init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V

    iput-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method


# virtual methods
.method protected closeKeyboard()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 130
    return-void
.end method

.method public abstract initObjects(Landroid/os/Bundle;)V
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    .line 61
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 65
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 68
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/andrew/apollo/menu/BasePlaylistDialog$1;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog$1;-><init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/andrew/apollo/menu/BasePlaylistDialog$2;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog$2;-><init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    new-instance v1, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;-><init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->initObjects(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mDefaultname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mDefaultname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 108
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 110
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public abstract onSaveClick()V
.end method

.method public abstract onTextChangedListener()V
.end method

.method protected openKeyboard()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 121
    return-void
.end method
