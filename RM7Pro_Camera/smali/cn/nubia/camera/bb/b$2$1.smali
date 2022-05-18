.class Lcn/nubia/camera/bb/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b$2;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/nubia/camera/bb/b$2$1;->a:Lcn/nubia/camera/bb/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/bb/b$2$1;->a:Lcn/nubia/camera/bb/b$2;

    iget-object v0, v0, Lcn/nubia/camera/bb/b$2;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;)V

    return-void
.end method
