.class Lcn/nubia/camera/debugmode/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/debugmode/NubiaDebugItem$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/debugmode/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/debugmode/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/debugmode/b;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/camera/debugmode/b$2;->a:Lcn/nubia/camera/debugmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key_debug_12M_to_48M_switch"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/debugmode/b$2;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {v0}, Lcn/nubia/camera/debugmode/b;->b(Lcn/nubia/camera/debugmode/b;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b$2;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {v0}, Lcn/nubia/camera/debugmode/b;->b(Lcn/nubia/camera/debugmode/b;)Landroid/widget/Button;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object p2, p0, Lcn/nubia/camera/debugmode/b$2;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {p2}, Lcn/nubia/camera/debugmode/b;->a(Lcn/nubia/camera/debugmode/b;)Lcn/nubia/camera/k/ah;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->k()V

    :cond_1
    const-string p2, "key_show_hdr_switch"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/debugmode/b$2;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {p1}, Lcn/nubia/camera/debugmode/b;->c(Lcn/nubia/camera/debugmode/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->q()V

    :cond_2
    return-void
.end method
