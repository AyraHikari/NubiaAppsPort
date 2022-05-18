.class Lcn/nubia/camera/multiRecord/h$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$1$1;->a:Lcn/nubia/camera/multiRecord/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$1$1;->a:Lcn/nubia/camera/multiRecord/h$1;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/h$1;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->b(Lcn/nubia/camera/multiRecord/h;)V

    return-void
.end method
