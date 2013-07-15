.class public Lcom/andrew/apollo/menu/PhotoSelectionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PhotoSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/menu/PhotoSelectionDialog$2;,
        Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    }
.end annotation


# static fields
.field private static mProfileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;


# instance fields
.field private final mChoices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 47
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;)Lcom/andrew/apollo/menu/PhotoSelectionDialog;
    .locals 3
    .parameter "title"
    .parameter "type"

    .prologue
    .line 63
    new-instance v1, Lcom/andrew/apollo/menu/PhotoSelectionDialog;

    invoke-direct {v1}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;-><init>()V

    .line 64
    .local v1, frag:Lcom/andrew/apollo/menu/PhotoSelectionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    sput-object p1, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mProfileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    .line 68
    return-object v1
.end method

.method private setAlbumChoices()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x3

    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method private setArtistChoices()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    :cond_0
    return-void
.end method

.method private setOtherChoices()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, title:Ljava/lang/String;
    sget-object v3, Lcom/andrew/apollo/menu/PhotoSelectionDialog$2;->$SwitchMap$com$andrew$apollo$menu$PhotoSelectionDialog$ProfileType:[I

    sget-object v4, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mProfileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    invoke-virtual {v4}, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/activities/ProfileActivity;

    .line 92
    .local v0, activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090011

    iget-object v4, p0, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->mChoices:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    .local v1, adapter:Landroid/widget/ListAdapter;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog$1;-><init>(Lcom/andrew/apollo/menu/PhotoSelectionDialog;Lcom/andrew/apollo/ui/activities/ProfileActivity;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 79
    .end local v0           #activity:Lcom/andrew/apollo/ui/activities/ProfileActivity;
    .end local v1           #adapter:Landroid/widget/ListAdapter;
    :pswitch_0
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->setArtistChoices()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->setAlbumChoices()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->setOtherChoices()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
