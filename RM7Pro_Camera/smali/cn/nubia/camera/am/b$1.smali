.class Lcn/nubia/camera/am/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/am/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/am/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/am/b;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/camera/am/b$1;->a:Lcn/nubia/camera/am/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 82
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/am/b$1;->a:Lcn/nubia/camera/am/b;

    .line 83
    invoke-static {v0}, Lcn/nubia/camera/am/b;->a(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    iget-object p2, p0, Lcn/nubia/camera/am/b$1;->a:Lcn/nubia/camera/am/b;

    invoke-static {p2}, Lcn/nubia/camera/am/b;->a(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/camera/a/a;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcn/nubia/camera/am/b$1;->a:Lcn/nubia/camera/am/b;

    invoke-static {p1}, Lcn/nubia/camera/am/b;->b(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/am/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/am/b$1;->a:Lcn/nubia/camera/am/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/am/b;->a(Lcn/nubia/camera/am/b;Z)Z

    return-void
.end method
