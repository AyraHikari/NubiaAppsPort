.class Lcn/nubia/camera/clone/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/c;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/camera/clone/c$2;->a:Lcn/nubia/camera/clone/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/clone/c$2;->a:Lcn/nubia/camera/clone/c;

    invoke-static {v0}, Lcn/nubia/camera/clone/c;->b(Lcn/nubia/camera/clone/c;)Lcn/nubia/camera/clone/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->l()V

    return-void
.end method
