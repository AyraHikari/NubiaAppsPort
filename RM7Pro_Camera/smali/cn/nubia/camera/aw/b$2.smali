.class Lcn/nubia/camera/aw/b$2;
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

    .line 249
    iput-object p1, p0, Lcn/nubia/camera/aw/b$2;->a:Lcn/nubia/camera/aw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/aw/b$2;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/aw/b;)Lcom/android/common/c/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->b(I)V

    return-void
.end method
