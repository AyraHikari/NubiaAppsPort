.class Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContentObserver"
.end annotation


# instance fields
.field baseFragment:Lcn/nubia/deskclock/fragment/BaseFragment;

.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/fragment/BaseFragment;Landroid/os/Handler;)V
    .locals 1
    .param p1, "baseFragment"    # Lcn/nubia/deskclock/fragment/BaseFragment;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mFragment:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 63
    const/4 v4, 0x0

    .line 64
    .local v4, "list":Landroid/widget/ListView;
    const/4 v0, 0x0

    .line 65
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mFragment:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 69
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/deskclock/fragment/BaseFragment;

    iput-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->baseFragment:Lcn/nubia/deskclock/fragment/BaseFragment;

    .line 71
    :cond_2
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->baseFragment:Lcn/nubia/deskclock/fragment/BaseFragment;

    invoke-virtual {v9}, Lcn/nubia/deskclock/fragment/BaseFragment;->getMotionContentView()Landroid/widget/ListView;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mListView:Ljava/lang/ref/WeakReference;

    .line 72
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 73
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "list":Landroid/widget/ListView;
    check-cast v4, Landroid/widget/ListView;

    .line 75
    .restart local v4    # "list":Landroid/widget/ListView;
    :cond_3
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->baseFragment:Lcn/nubia/deskclock/fragment/BaseFragment;

    invoke-virtual {v9}, Lcn/nubia/deskclock/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mActivity:Ljava/lang/ref/WeakReference;

    .line 76
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 77
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 79
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v1, 0x0

    .line 80
    .local v1, "enable":Z
    if-nez v4, :cond_5

    .line 81
    const-string v6, "BaseFragment"

    const-string v7, " listView is null "

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_5
    if-nez v0, :cond_6

    .line 85
    const-string v6, "BaseFragment"

    const-string v7, " activity is null "

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_6
    const-string v6, "BaseFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " onChange uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p2, :cond_15

    const-string v6, "cc_navi_status"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f0a0000

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 91
    .local v5, "listHeightSize":I
    const-string v6, "BaseFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " listViewSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "BaseFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " KEY_CC_NAVI_STATUS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "cc_navi_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v6, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "cc_navi_status"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_a

    move v1, v7

    .line 94
    :goto_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v6, "BaseFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " enable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";; mMobileModel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v1, :cond_f

    .line 97
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX629"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX627"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX651"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX659"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 98
    :cond_7
    const/16 v5, 0x5a0

    .line 121
    :cond_8
    :goto_2
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 122
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    .line 124
    .local v2, "height":I
    const-string v6, "BaseFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChange: height : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4}, Landroid/widget/ListView;->requestLayout()V

    .line 126
    invoke-virtual {v4}, Landroid/widget/ListView;->postInvalidate()V

    .line 130
    .end local v2    # "height":I
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "listHeightSize":I
    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .restart local v5    # "listHeightSize":I
    :cond_a
    move v1, v8

    .line 93
    goto/16 :goto_1

    .line 99
    .restart local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX619"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 100
    const/16 v5, 0x483

    goto :goto_2

    .line 101
    :cond_c
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX616"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 102
    const/16 v5, 0x4fb

    goto :goto_2

    .line 103
    :cond_d
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX669"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 104
    const/16 v5, 0x5d7

    goto :goto_2

    .line 105
    :cond_e
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX666"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 106
    const/16 v5, 0x5d7

    goto :goto_2

    .line 109
    :cond_f
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX629"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX627"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX651"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX659"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 110
    :cond_10
    const/16 v5, 0x618

    goto/16 :goto_2

    .line 111
    :cond_11
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX619"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 112
    const/16 v5, 0x4fb

    goto/16 :goto_2

    .line 113
    :cond_12
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX616"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 114
    const/16 v5, 0x573

    goto/16 :goto_2

    .line 115
    :cond_13
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX669"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 116
    const/16 v5, 0x64a

    goto/16 :goto_2

    .line 117
    :cond_14
    invoke-static {}, Lcn/nubia/deskclock/fragment/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NX666"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 118
    const/16 v5, 0x64a

    goto/16 :goto_2

    .line 127
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "listHeightSize":I
    :cond_15
    if-eqz p2, :cond_9

    const-string v6, "ui_night_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3
.end method
