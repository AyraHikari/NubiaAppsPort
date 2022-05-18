.class Lcn/nubia/i/f$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 577
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->u(Lcn/nubia/i/f;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->v(Lcn/nubia/i/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/i/p;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    iget-object p2, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->i(Lcn/nubia/i/f;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 580
    iget-object p2, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->t(Lcn/nubia/i/f;)Lcn/nubia/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/g;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Ljava/util/ArrayList;)V

    .line 582
    :cond_0
    iget-object p2, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p2, p1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Z)Z

    .line 583
    iget-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->h(Lcn/nubia/i/f;)V

    .line 584
    iget-object p1, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/i/f$2;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->i(Lcn/nubia/i/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
