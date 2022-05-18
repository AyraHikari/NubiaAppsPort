.class Lcom/android/common/ui/ZtemtSlidingDrawer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$2;->a:Lcom/android/common/ui/ZtemtSlidingDrawer;

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

    .line 151
    iget-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$2;->a:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(I)V

    return-void
.end method
