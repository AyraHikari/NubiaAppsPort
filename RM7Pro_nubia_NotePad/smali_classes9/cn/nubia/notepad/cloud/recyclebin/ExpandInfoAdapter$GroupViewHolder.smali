.class final Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupViewHolder"
.end annotation


# instance fields
.field private groupTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const v0, 0x7f0f004a

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->groupTitleView:Landroid/widget/TextView;

    .line 355
    return-void
.end method


# virtual methods
.method bind(ILjava/lang/String;)V
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "groupTitle"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->groupTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method
