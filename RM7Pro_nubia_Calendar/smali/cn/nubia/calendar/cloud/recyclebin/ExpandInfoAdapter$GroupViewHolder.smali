.class final Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupViewHolder"
.end annotation


# instance fields
.field private groupTitleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const v0, 0x7f110191

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->groupTitleView:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f110190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->view:Landroid/view/View;

    .line 152
    return-void
.end method


# virtual methods
.method bind(ILjava/lang/String;)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "groupTitle"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->groupTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
