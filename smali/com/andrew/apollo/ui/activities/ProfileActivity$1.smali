.class Lcom/andrew/apollo/ui/activities/ProfileActivity$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/ProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->access$000(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ARTIST:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    .line 148
    .local v0, profileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->access$000(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->access$200(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1, v0}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->newInstance(Ljava/lang/String;Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;)Lcom/andrew/apollo/menu/PhotoSelectionDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-virtual {v2}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoSelectionDialog"

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/menu/PhotoSelectionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    return-void

    .line 143
    .end local v0           #profileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->access$100(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ALBUM:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    .restart local v0       #profileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    goto :goto_0

    .line 146
    .end local v0           #profileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    :cond_1
    sget-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->OTHER:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    .restart local v0       #profileType:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ProfileActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->access$300(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
