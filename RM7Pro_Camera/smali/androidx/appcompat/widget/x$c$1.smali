.class Landroidx/appcompat/widget/x$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/x$c;-><init>(Landroidx/appcompat/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/x;

.field final synthetic b:Landroidx/appcompat/widget/x$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/x$c;Landroidx/appcompat/widget/x;)V
    .locals 0

    .line 975
    iput-object p1, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    iput-object p2, p0, Landroidx/appcompat/widget/x$c$1;->a:Landroidx/appcompat/widget/x;

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

    .line 978
    iget-object p1, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    iget-object p1, p1, Landroidx/appcompat/widget/x$c;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/x;->setSelection(I)V

    .line 979
    iget-object p1, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    iget-object p1, p1, Landroidx/appcompat/widget/x$c;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1}, Landroidx/appcompat/widget/x;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 980
    iget-object p1, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    iget-object p1, p1, Landroidx/appcompat/widget/x$c;->b:Landroidx/appcompat/widget/x;

    iget-object p4, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    iget-object p4, p4, Landroidx/appcompat/widget/x$c;->a:Landroid/widget/ListAdapter;

    .line 981
    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/appcompat/widget/x;->performItemClick(Landroid/view/View;IJ)Z

    .line 983
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/x$c$1;->b:Landroidx/appcompat/widget/x$c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/x$c;->c()V

    return-void
.end method
