.class public Lcn/nubia/calendar/deftcontroller/BottomBarController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "BottomBarController.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftObserver;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;,
        Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomBarController"


# instance fields
.field private mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

.field private mContext:Landroid/content/Context;

.field private mOutterHandler:Landroid/os/Handler;

.field private mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 214
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 215
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 216
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    .line 217
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 218
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/BottomBarController;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/BottomBarController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->doWithCmd_Today(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/BottomBarController;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/BottomBarController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->doWithCmd_Add(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/BottomBarController;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/BottomBarController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->doWithCmd_More(Landroid/view/View;)V

    return-void
.end method

.method private doWithCmd_Add(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa2

    .line 132
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method private doWithCmd_More(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->showMoreDialog()V

    .line 139
    return-void
.end method

.method private doWithCmd_Today(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa1

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method private initView_Add()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->getView_Add()Landroid/widget/TextView;

    move-result-object v0

    .line 102
    .local v0, "addView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcn/nubia/calendar/deftcontroller/BottomBarController$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController$2;-><init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method private initView_More()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->getView_More()Landroid/widget/TextView;

    move-result-object v0

    .line 114
    .local v0, "moreView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcn/nubia/calendar/deftcontroller/BottomBarController$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController$3;-><init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    return-void
.end method

.method private initView_Today()V
    .locals 3

    .prologue
    .line 87
    const-string v1, "BottomBarController"

    const-string v2, "[TODAY] initView_Today()"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->getView_Today()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 89
    .local v0, "todayView":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurrentDay()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->setCurrentTime(Landroid/text/format/Time;)V

    .line 90
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcn/nubia/calendar/deftcontroller/BottomBarController$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController$1;-><init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method private showMoreDialog()V
    .locals 5

    .prologue
    .line 154
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v2, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 159
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 160
    return-void
.end method

.method private showMoreOptionMenu()V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->dismissMorePopup()V

    .line 143
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 146
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v2, 0x7f0a0014

    new-instance v3, Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;-><init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;Lcn/nubia/calendar/deftcontroller/BottomBarController$1;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->getImgViewOfMoreMenuItem()Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "moreView":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 151
    return-void
.end method

.method private updateTodayTime()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurrentDay()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->setCurrentTime(Landroid/text/format/Time;)V

    .line 206
    return-void
.end method


# virtual methods
.method public destroySelf()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    :cond_0
    return-void
.end method

.method dismissMorePopup()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->dismiss()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 212
    :cond_0
    return-void
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;)V
    .locals 1
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;

    .prologue
    .line 57
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 58
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->bottomBarMgr:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 59
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    .line 61
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->registerObserver(Ljava/lang/Object;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->initView_Today()V

    .line 66
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->initView_Add()V

    .line 67
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->initView_More()V

    .line 68
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "changeFlag"    # I

    .prologue
    .line 54
    return-void
.end method

.method public onClick(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :cond_0
    return-void

    .line 174
    :pswitch_0
    const-string v1, "Selectdate"

    invoke-static {v1}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa6

    .line 177
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa3

    .line 182
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mOutterHandler:Landroid/os/Handler;

    const/16 v2, 0xfa5

    .line 187
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->onClick(I)V

    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 39
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->updateTodayTime()V

    .line 201
    return-void
.end method

.method public switchMoreMenu()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->dismiss()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    goto :goto_0
.end method
