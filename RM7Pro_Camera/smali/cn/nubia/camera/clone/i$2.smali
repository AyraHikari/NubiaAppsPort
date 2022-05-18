.class Lcn/nubia/camera/clone/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/i;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/clone/i$2;->a:Lcn/nubia/camera/clone/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcn/nubia/camera/clone/i$2;->a:Lcn/nubia/camera/clone/i;

    invoke-static {p1}, Lcn/nubia/camera/clone/i;->b(Lcn/nubia/camera/clone/i;)Lcom/android/common/ui/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/j;->cancel()V

    return-void
.end method
