.class public Lcom/andrew/apollo/menu/CreateNewPlaylist;
.super Lcom/andrew/apollo/menu/BasePlaylistDialog;
.source "CreateNewPlaylist.java"


# instance fields
.field private mPlaylistList:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;-><init>()V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylistList:[J

    return-void
.end method

.method public static getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;
    .locals 3
    .parameter "list"

    .prologue
    .line 40
    new-instance v1, Lcom/andrew/apollo/menu/CreateNewPlaylist;

    invoke-direct {v1}, Lcom/andrew/apollo/menu/CreateNewPlaylist;-><init>()V

    .line 41
    .local v1, frag:Lcom/andrew/apollo/menu/CreateNewPlaylist;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "playlist_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 14

    .prologue
    .line 113
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, template:Ljava/lang/String;
    const/4 v8, 0x1

    .line 115
    .local v8, num:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 118
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v11, "name != \'\'"

    .line 120
    .local v11, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name != \'\'"

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 123
    const/4 v12, 0x0

    .line 143
    :goto_0
    return-object v12

    .line 127
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 129
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_1
    if-nez v7, :cond_3

    .line 130
    const/4 v7, 0x1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 135
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 136
    const/4 v7, 0x0

    move v8, v9

    .line 138
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 141
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v6, 0x0

    .line 143
    goto :goto_0
.end method


# virtual methods
.method public initObjects(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "playlist_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylistList:[J

    .line 61
    if-eqz p1, :cond_0

    const-string v1, "defaultname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mDefaultname:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mDefaultname:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 69
    :goto_1
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_1
    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, prromptformat:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mDefaultname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPrompt:Ljava/lang/String;

    goto :goto_1
.end method

.method public onSaveClick()V
    .locals 8

    .prologue
    .line 73
    iget-object v4, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, playlistName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 77
    .local v2, playlistId:I
    if-ltz v2, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/andrew/apollo/utils/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    .line 79
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylistList:[J

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->closeKeyboard()V

    .line 86
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 88
    .end local v2           #playlistId:I
    :cond_0
    return-void

    .line 81
    .restart local v2       #playlistId:I
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3}, Lcom/andrew/apollo/format/Capitalize;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    .local v0, newId:J
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylistList:[J

    invoke-static {v4, v5, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 52
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onTextChangedListener()V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, playlistName:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/menu/CreateNewPlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
