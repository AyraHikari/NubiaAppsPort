.class Lcn/nubia/camera/aw/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aw/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aw/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/b;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/camera/aw/b$3;->a:Lcn/nubia/camera/aw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/aw/b$3;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    return-void
.end method
