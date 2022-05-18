.class Lcn/nubia/camera/clone/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/nubia/camera/clone/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/c;J)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/clone/c$1;->b:Lcn/nubia/camera/clone/c;

    iput-wide p2, p0, Lcn/nubia/camera/clone/c$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/clone/c$1;->b:Lcn/nubia/camera/clone/c;

    invoke-static {v0}, Lcn/nubia/camera/clone/c;->a(Lcn/nubia/camera/clone/c;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/clone/c$1;->b:Lcn/nubia/camera/clone/c;

    invoke-static {v0}, Lcn/nubia/camera/clone/c;->a(Lcn/nubia/camera/clone/c;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/camera/clone/c$1;->a:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/l;->b(I)V

    :cond_0
    return-void
.end method
