.class Lcn/nubia/video/commonui/app/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/a;-><init>(Landroid/view/View;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/a$a;->a:Lcn/nubia/video/commonui/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a$a;->a:Lcn/nubia/video/commonui/app/a;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/a;->a(Lcn/nubia/video/commonui/app/a;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/commonui/app/a$a;->a:Lcn/nubia/video/commonui/app/a;

    invoke-static {v2}, Lcn/nubia/video/commonui/app/a;->b(Lcn/nubia/video/commonui/app/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/video/commonui/app/a;->c(Lcn/nubia/video/commonui/app/a;II)V

    return-void
.end method
