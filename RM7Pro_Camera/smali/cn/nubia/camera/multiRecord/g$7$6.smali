.class Lcn/nubia/camera/multiRecord/g$7$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g$7;->b()V
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

    .line 1087
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$7$6;->a:Lcn/nubia/camera/multiRecord/g$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1090
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$6;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$6;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->e(Lcn/nubia/camera/multiRecord/g;)V

    :goto_0
    return-void
.end method
