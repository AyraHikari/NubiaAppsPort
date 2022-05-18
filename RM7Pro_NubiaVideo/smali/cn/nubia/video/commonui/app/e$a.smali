.class Lcn/nubia/video/commonui/app/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/commonui/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/e;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e$a;->a:Lcn/nubia/video/commonui/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$a;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/e;->D(Landroid/widget/PopupWindow;)V

    return-void
.end method
