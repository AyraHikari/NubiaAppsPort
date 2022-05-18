.class Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;
.super Ljava/lang/Object;
.source "NubiaPagerTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .prologue
    .line 167
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iput p2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-static {v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->access$100(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;->val$position:I

    invoke-static {v1, v2}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->access$000(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 171
    return-void
.end method
