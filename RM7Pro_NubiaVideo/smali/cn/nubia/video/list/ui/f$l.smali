.class Lcn/nubia/video/list/ui/f$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/f;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/f$l;->a:Lcn/nubia/video/list/ui/f;

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

    const p1, 0x7f090047

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$l;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1, p3}, Lb/a/b/c/b/q;->d(I)V

    return-void
.end method
