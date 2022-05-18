.class Lcn/nubia/camera/bb/b$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/nubia/camera/bb/b$2;->a:Lcn/nubia/camera/bb/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/bb/b$2;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/b;->j()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;I)I

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/bb/b$2;->a:Lcn/nubia/camera/bb/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/b;->b(Lcn/nubia/camera/bb/b;Z)Z

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/bb/b$2;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->b(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/b$c;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/b$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/b$2$1;-><init>(Lcn/nubia/camera/bb/b$2;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
