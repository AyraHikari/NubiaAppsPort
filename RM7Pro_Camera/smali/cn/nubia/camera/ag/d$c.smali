.class Lcn/nubia/camera/ag/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ag/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ag/d;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lcn/nubia/camera/ag/d$c;-><init>(Lcn/nubia/camera/ag/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 840
    iget-object v0, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->p(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 841
    iget-object v0, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    sget-wide v1, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;J)V

    .line 842
    iget-object p1, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->q(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->b(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 852
    iget-object v0, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->r(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcn/nubia/camera/ag/d$c;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->s(Lcn/nubia/camera/ag/d;)V

    :cond_0
    return-void
.end method
