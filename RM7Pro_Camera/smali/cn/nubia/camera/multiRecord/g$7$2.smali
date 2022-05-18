.class Lcn/nubia/camera/multiRecord/g$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g$7;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$7$2;->a:Lcn/nubia/camera/multiRecord/g$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$2;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->setVisibility(I)V

    return-void
.end method
