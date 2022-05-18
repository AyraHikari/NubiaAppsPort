.class Lcn/nubia/video/commonui/app/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/e;->j()V
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
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e$c;->a:Lcn/nubia/video/commonui/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$c;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->c(Lcn/nubia/video/commonui/app/e;)[Z

    move-result-object p1

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$c;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->d(Lcn/nubia/video/commonui/app/e;)Lcn/nubia/video/commonui/app/e$i;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/nubia/video/commonui/app/e$i;->a(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$c;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
