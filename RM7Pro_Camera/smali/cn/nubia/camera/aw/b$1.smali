.class Lcn/nubia/camera/aw/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ah;

.field final synthetic b:Lcn/nubia/camera/aw/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/camera/aw/b$1;->b:Lcn/nubia/camera/aw/b;

    iput-object p2, p0, Lcn/nubia/camera/aw/b$1;->a:Lcn/nubia/camera/k/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 3

    .line 130
    iget-object p1, p0, Lcn/nubia/camera/aw/b$1;->b:Lcn/nubia/camera/aw/b;

    invoke-static {p1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ae/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ae/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcn/nubia/camera/aw/b$1;->b:Lcn/nubia/camera/aw/b;

    invoke-static {p1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ae/a;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/aw/b$1;->b:Lcn/nubia/camera/aw/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;J)J

    .line 134
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aw/b$1;->a:Lcn/nubia/camera/k/ah;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method
