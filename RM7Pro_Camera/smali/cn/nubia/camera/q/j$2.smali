.class Lcn/nubia/camera/q/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/j;->b(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcn/nubia/camera/q/j$2;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 745
    iget-object v0, p0, Lcn/nubia/camera/q/j$2;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->h(Lcn/nubia/camera/q/j;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
