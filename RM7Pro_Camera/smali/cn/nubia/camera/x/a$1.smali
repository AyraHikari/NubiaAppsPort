.class Lcn/nubia/camera/x/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcn/nubia/camera/x/a$1;->a:Lcn/nubia/camera/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcn/nubia/camera/x/a$1;->a:Lcn/nubia/camera/x/a;

    invoke-static {p1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;)Lcom/android/common/ui/ZtemtSlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a()V

    return-void
.end method
