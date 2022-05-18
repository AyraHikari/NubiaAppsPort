.class final Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
.super Ljava/lang/Object;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChlidViewHolder"
.end annotation


# instance fields
.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const v0, 0x7f11004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f110195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->view:Landroid/view/View;

    .line 130
    return-void
.end method


# virtual methods
.method bind(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;Z)V
    .locals 2
    .param p1, "item"    # Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    .param p2, "isLastChild"    # Z

    .prologue
    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->getmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
