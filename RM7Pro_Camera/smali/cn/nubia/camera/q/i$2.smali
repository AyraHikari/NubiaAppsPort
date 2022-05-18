.class Lcn/nubia/camera/q/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/i;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcn/nubia/camera/q/i$2;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1243
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/i$2;->a:Lcn/nubia/camera/q/i;

    .line 1244
    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1245
    iget-object v0, p0, Lcn/nubia/camera/q/i$2;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
