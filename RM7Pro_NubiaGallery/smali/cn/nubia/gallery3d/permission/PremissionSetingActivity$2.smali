.class Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;
.super Ljava/lang/Object;
.source "PremissionSetingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->showPressionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/permission/PremissionSetingActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;->this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 77
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;->this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    .line 78
    invoke-virtual {v0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    iget-object p2, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;->this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
