.class Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->showPermissionGuide(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 684
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    .line 685
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 686
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
