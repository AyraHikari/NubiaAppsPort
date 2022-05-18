.class Lcn/nubia/camera/bb/v$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/s/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;

.field private b:J


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 2

    .line 1018
    iput-object p1, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1019
    iput-wide v0, p0, Lcn/nubia/camera/bb/v$9;->b:J

    return-void
.end method

.method private a()V
    .locals 5

    .line 1049
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->t(Lcn/nubia/camera/bb/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    .line 1056
    iget-object v2, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/n/b;->e()I

    move-result v2

    .line 1057
    iget-object v3, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v3}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/n/b;->c()V

    .line 1058
    iget-object v3, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;

    .line 1059
    iget-object v3, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v3, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Z)Z

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1061
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/v;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Landroid/view/View;)V

    if-eqz v1, :cond_2

    .line 1063
    iget-object v2, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/n/b;->a(I)V

    .line 1065
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/n/b;->b(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1069
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->g(Lcn/nubia/camera/bb/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1074
    iget-object v1, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->r(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/s/a$b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 1077
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->u(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1078
    iget-object v1, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->u(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/camera/pretty/a;->b(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 6

    .line 1024
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1031
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1032
    iget-wide v2, p0, Lcn/nubia/camera/bb/v$9;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    return-void

    .line 1036
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->r(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/s/a$b;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGenderChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoFragment"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v2, p0, Lcn/nubia/camera/bb/v$9;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2, p1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;

    .line 1039
    iput-wide v0, p0, Lcn/nubia/camera/bb/v$9;->b:J

    .line 1040
    invoke-direct {p0}, Lcn/nubia/camera/bb/v$9;->a()V

    .line 1044
    invoke-direct {p0}, Lcn/nubia/camera/bb/v$9;->b()V

    :cond_3
    return-void
.end method
