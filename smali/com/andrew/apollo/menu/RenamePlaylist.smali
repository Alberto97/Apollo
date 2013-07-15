.class public Lcom/andrew/apollo/menu/RenamePlaylist;
.super Lcom/andrew/apollo/menu/BasePlaylistDialog;
.source "RenamePlaylist.java"


# instance fields
.field private mOriginalName:Ljava/lang/String;

.field private mRenameId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Long;)Lcom/andrew/apollo/menu/RenamePlaylist;
    .locals 5
    .parameter "id"

    .prologue
    .line 42
    new-instance v1, Lcom/andrew/apollo/menu/RenamePlaylist;

    invoke-direct {v1}, Lcom/andrew/apollo/menu/RenamePlaylist;-><init>()V

    .line 43
    .local v1, frag:Lcom/andrew/apollo/menu/RenamePlaylist;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "rename"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/menu/RenamePlaylist;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private getPlaylistNameFromId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 126
    .local v7, playlistName:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v6, 0x0

    .line 134
    return-object v7
.end method


# virtual methods
.method public initObjects(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    if-eqz p1, :cond_1

    const-string v1, "rename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mRenameId:J

    .line 65
    iget-wide v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/menu/RenamePlaylist;->getPlaylistNameFromId(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_2

    const-string v1, "defaultname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mDefaultname:Ljava/lang/String;

    .line 68
    iget-wide v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mRenameId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mDefaultname:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 74
    :goto_2
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rename"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_3
    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/menu/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, promptformat:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mDefaultname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mPrompt:Ljava/lang/String;

    goto :goto_2
.end method

.method public onSaveClick()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 81
    iget-object v3, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, playlistName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 84
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 85
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-static {v0}, Lcom/andrew/apollo/format/Capitalize;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mRenameId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->closeKeyboard()V

    .line 91
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 93
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 54
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public onTextChangedListener()V
    .locals 5

    .prologue
    .line 97
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, playlistName:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/RenamePlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/menu/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
