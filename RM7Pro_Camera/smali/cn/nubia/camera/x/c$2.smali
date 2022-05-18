.class Lcn/nubia/camera/x/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/c;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/c;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcn/nubia/camera/x/c$2;->a:Lcn/nubia/camera/x/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 193
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/x/c$2;->a:Lcn/nubia/camera/x/c;

    invoke-static {v0}, Lcn/nubia/camera/x/c;->b(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/x/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/x/a;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id_type"

    const-string v1, "gallery"

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/x/c$2;->a:Lcn/nubia/camera/x/c;

    invoke-static {v0}, Lcn/nubia/camera/x/c;->c(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/c$2;->a:Lcn/nubia/camera/x/c;

    invoke-static {v1}, Lcn/nubia/camera/x/c;->d(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/x/c$2;->a:Lcn/nubia/camera/x/c;

    invoke-static {v2}, Lcn/nubia/camera/x/c;->e(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method
