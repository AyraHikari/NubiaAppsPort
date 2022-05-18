.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
.super Landroid/app/Fragment;
.source "EditEventFragment.java"

# interfaces
.implements Lcn/nubia/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$onReminderMethodResult;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;,
        Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_EDIT_ON_LAUNCH:Ljava/lang/String; = "key_edit_on_launch"

.field private static final BUNDLE_KEY_EDIT_STATE:Ljava/lang/String; = "key_edit_state"

.field private static final BUNDLE_KEY_EVENT:Ljava/lang/String; = "key_event"

.field private static final BUNDLE_KEY_MODEL:Ljava/lang/String; = "key_model"

.field private static final BUNDLE_KEY_READ_ONLY:Ljava/lang/String; = "key_read_only"

.field public static CREATE_EVENT_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final FALSEFLAG:I = 0x0

.field public static KEY_DESCRIPTION:Ljava/lang/String; = null

.field private static final SETMODELMESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EditEventFragment"

.field private static final TOKEN_ALL:I = 0x3f

.field private static final TOKEN_ATTENDEES:I = 0x2

.field private static final TOKEN_CALENDARS:I = 0x8

.field private static final TOKEN_CUSTOM_EVENT:I = 0x10

.field private static final TOKEN_CUSTOM_REMINDER:I = 0x20

.field private static final TOKEN_EVENT:I = 0x1

.field private static final TOKEN_REMINDERS:I = 0x4

.field private static final TOKEN_UNITIALIZED:I = -0x80000000

.field private static final TUREFLAG:I = 0x1

.field private static mphoneNumbers:Ljava/lang/String;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private editEventActionBarButtons:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private mBegin:J

.field private mContext:Landroid/app/Activity;

.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:J

.field private final mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

.field private mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

.field mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

.field private mHandlerMainThread:Landroid/os/Handler;

.field mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mIntent:Landroid/content/Intent;

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field mModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field mModification:I

.field private mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

.field private mOrientation:I

.field mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private mOutstandingQueries:I

.field mReminderMinutes:Landroid/widget/TextView;

.field mRestoreModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private mSaveOnDetach:Z

.field public mShowModifyDialogOnLaunch:Z

.field private mUri:Landroid/net/Uri;

.field private mUseCustomActionBar:Z

.field mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

.field private mtitleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "cn.nubia.calendar.otherApp.CREATE_EVENT"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->CREATE_EVENT_ACTION:Ljava/lang/String;

    .line 114
    const-string v0, "description"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->KEY_DESCRIPTION:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mphoneNumbers:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;-><init>(Lcn/nubia/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    .line 596
    return-void
.end method

.method public constructor <init>(Lcn/nubia/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V
    .locals 4
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;
    .param p2, "readOnly"    # Z
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 598
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    const/high16 v0, -0x80000000

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    .line 138
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandlerMainThread:Landroid/os/Handler;

    .line 171
    iput v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 180
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    .line 182
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mSaveOnDetach:Z

    .line 183
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    .line 184
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 185
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsSaved:Z

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mDialogList:Ljava/util/List;

    .line 599
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 600
    iput-boolean p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    .line 601
    iput-object p3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIntent:Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->setHasOptionsMenu(Z)V

    .line 603
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->setModelIfDoneDeal(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandlerMainThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isTitleEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getPendingIntent2CalendarAppWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->alarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getPendingIntent2CalendarPressWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getPendingIntent2CalendarFactory(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mSaveOnDetach:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    return-wide v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->setModelIfDone(I)V

    return-void
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 105
    sput-object p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mphoneNumbers:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 105
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isMoreEventsAfterDel()Z

    move-result v0

    return v0
.end method

.method private getPendingIntent2CalendarAppWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1216
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1218
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1219
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1220
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntent2CalendarFactory(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1234
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1236
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1237
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1238
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntent2CalendarPressWidgetProvider(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1225
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1227
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1228
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1229
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private isEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1259
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1260
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1280
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1266
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1267
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1273
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1274
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1280
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isMoreEventsAfterDel()Z
    .locals 20

    .prologue
    .line 539
    const-wide/16 v16, 0x0

    .line 541
    .local v16, "start":J
    const/4 v12, 0x0

    .line 544
    .local v12, "eventCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lastDate"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v18, v0

    .line 548
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 544
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 549
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 550
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 551
    .local v14, "lastDate":J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v16

    .line 553
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_1

    .line 554
    const/4 v2, 0x1

    .line 584
    if-eqz v12, :cond_0

    .line 585
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v12, 0x0

    .line 589
    .end local v14    # "lastDate":J
    :cond_0
    :goto_0
    return v2

    .line 556
    .restart local v14    # "lastDate":J
    :cond_1
    :try_start_1
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 557
    .local v8, "builder":Landroid/net/Uri$Builder;
    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 558
    const-wide/32 v2, 0x3f4a4800

    add-long v10, v16, v2

    .line 559
    .local v10, "end":J
    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 560
    const/4 v13, 0x0

    .line 562
    .local v13, "instancesCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 563
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v18, v0

    .line 565
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 562
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 567
    if-eqz v13, :cond_3

    .line 568
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 569
    const/4 v2, 0x1

    .line 574
    if-eqz v13, :cond_2

    .line 575
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 576
    const/4 v13, 0x0

    .line 584
    :cond_2
    if-eqz v12, :cond_0

    .line 585
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v12, 0x0

    goto :goto_0

    .line 574
    :cond_3
    if-eqz v13, :cond_4

    .line 575
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 576
    const/4 v13, 0x0

    .line 584
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v10    # "end":J
    .end local v13    # "instancesCursor":Landroid/database/Cursor;
    .end local v14    # "lastDate":J
    :cond_4
    :goto_1
    if-eqz v12, :cond_5

    .line 585
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v12, 0x0

    .line 589
    :cond_5
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 571
    .restart local v8    # "builder":Landroid/net/Uri$Builder;
    .restart local v10    # "end":J
    .restart local v13    # "instancesCursor":Landroid/database/Cursor;
    .restart local v14    # "lastDate":J
    :catch_0
    move-exception v9

    .line 572
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 574
    if-eqz v13, :cond_4

    .line 575
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 576
    const/4 v13, 0x0

    goto :goto_1

    .line 574
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    .line 575
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 576
    const/4 v13, 0x0

    .line 578
    :cond_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 581
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v10    # "end":J
    .end local v13    # "instancesCursor":Landroid/database/Cursor;
    .end local v14    # "lastDate":J
    :catch_1
    move-exception v9

    .line 582
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 584
    if-eqz v12, :cond_5

    .line 585
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v12, 0x0

    goto :goto_2

    .line 584
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_7

    .line 585
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v12, 0x0

    .line 588
    :cond_7
    throw v2
.end method

.method private isTitleEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1249
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1252
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryReminderPhoneNumbers(Landroid/app/Activity;JI)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "eventId"    # J
    .param p3, "minutes"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 446
    sput-object v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mphoneNumbers:Ljava/lang/String;

    .line 448
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    .line 449
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$2;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$2;-><init>(Landroid/content/ContentResolver;)V

    sget-object v3, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "phone_numbers"

    aput-object v5, v4, v1

    const-string v5, "event_id=? AND miniutes = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 469
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 470
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    move-object v7, v2

    .line 462
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$2;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mphoneNumbers:Ljava/lang/String;

    return-object v0
.end method

.method private saveReminders()V
    .locals 14

    .prologue
    .line 908
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v0

    .line 916
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 920
    :cond_0
    new-instance v3, Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 921
    .local v3, "service":Lcn/nubia/calendar/AsyncQueryService;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, v1

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 924
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 925
    .local v6, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 926
    .local v13, "len":I
    if-lez v13, :cond_2

    const/4 v12, 0x1

    .line 927
    .local v12, "hasAlarm":Z
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    if-eq v12, v2, :cond_1

    .line 928
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 929
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "hasAlarm"

    if-eqz v12, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v3 .. v11}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 933
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const v4, 0x7f0c0083

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 934
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 926
    .end local v12    # "hasAlarm":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 929
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v12    # "hasAlarm":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setModelIfDone(I)V
    .locals 2
    .param p1, "queryType"    # I

    .prologue
    .line 479
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method private setModelIfDoneDeal(IZ)V
    .locals 4
    .param p1, "queryType"    # I
    .param p2, "flagIsMoreEventsAfterDel"    # Z

    .prologue
    const/4 v0, 0x0

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    .line 503
    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    if-nez v1, :cond_4

    .line 504
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mRestoreModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mRestoreModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 507
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    if-nez v1, :cond_2

    .line 509
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 511
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->displayEditWhichDialog()V

    .line 514
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 516
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    if-nez v1, :cond_3

    .line 517
    monitor-exit p0

    .line 530
    :goto_0
    return-void

    .line 519
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModel(Lcn/nubia/calendar/model/CalendarEventModel;)V

    .line 520
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModification(I)V

    .line 522
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v1, :cond_5

    .line 524
    .local v0, "showDialog":Z
    :goto_1
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 525
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 526
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTitleTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 529
    .end local v0    # "showDialog":Z
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 522
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method private showCustomActionBar()V
    .locals 6

    .prologue
    .line 742
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUseCustomActionBar:Z

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v2, v1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003b

    .line 746
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "title":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 749
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 753
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 746
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    .line 747
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showDialogWhenEditAgendaOnBack()V
    .locals 4

    .prologue
    .line 893
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c020f

    .line 894
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$5;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$5;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    .line 895
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 901
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 902
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 903
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 904
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 607
    iput-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    .line 608
    iput-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    .line 609
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_6

    .line 610
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iput-wide v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 612
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    .line 613
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 618
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    .line 634
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 636
    invoke-virtual {v0, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->constructDefaultStartTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    .line 639
    :cond_2
    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 641
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    invoke-virtual {v0, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->constructDefaultEndTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    .line 645
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    move v8, v1

    .line 646
    .local v8, "newEvent":Z
    :goto_2
    if-nez v8, :cond_9

    .line 647
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    .line 648
    const/16 v0, 0x3f

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    .line 652
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_3
    return-void

    .line 616
    .end local v8    # "newEvent":Z
    :cond_4
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v6, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x10

    cmp-long v0, v6, v10

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_4

    .line 624
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 626
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->id:J

    iput-wide v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 627
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->id:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 630
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->start:J

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    .line 631
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->end:J

    iput-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    goto :goto_1

    :cond_8
    move v8, v3

    .line 645
    goto :goto_2

    .line 656
    .restart local v8    # "newEvent":Z
    :cond_9
    iput v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOutstandingQueries:I

    .line 660
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mBegin:J

    iput-wide v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 661
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEnd:J

    iput-wide v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 662
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iput v1, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 665
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500 AND visible =1  AND calendar_displayName !=  \'PC Sync\' "

    const-string v7, "ownerAccount"

    move v1, v9

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 674
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModification(I)V

    goto :goto_3
.end method


# virtual methods
.method public cancelButtonClick()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isEmptyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->exit()V

    .line 891
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 889
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->showDialogWhenEditAgendaOnBack()V

    goto :goto_0
.end method

.method protected displayEditWhichDialog()V
    .locals 14

    .prologue
    .line 938
    iget v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    if-nez v11, :cond_1

    .line 939
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v11, v11, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 940
    .local v9, "notSynced":Z
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v4, v11, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 941
    .local v4, "isFirstEventInSeries":Z
    const/4 v5, 0x0

    .line 944
    .local v5, "itemIndex":I
    if-eqz v9, :cond_3

    .line 947
    if-eqz v4, :cond_2

    .line 950
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/CharSequence;

    .line 962
    .local v7, "items":[Ljava/lang/CharSequence;
    :goto_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "itemIndex":I
    .local v6, "itemIndex":I
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const v12, 0x7f0c0051

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v7, v5

    .line 966
    if-nez v4, :cond_6

    .line 967
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const v12, 0x7f0c0052

    .line 968
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v7, v6

    .line 972
    :goto_1
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v11, :cond_0

    .line 974
    :try_start_0
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v11}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_2
    const/4 v11, 0x0

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 982
    :cond_0
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    .line 983
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 984
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f030052

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 986
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f110169

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 987
    .local v0, "btn1":Landroid/widget/Button;
    const v11, 0x7f11016a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 988
    .local v1, "btn2":Landroid/widget/Button;
    new-instance v11, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v12, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 989
    invoke-virtual {v11, v10}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x1040000

    .line 990
    invoke-virtual {p0, v12}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;

    invoke-direct {v13, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    invoke-virtual {v11, v12, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    .line 1002
    invoke-virtual {v11}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 1003
    .local v2, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1004
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 1005
    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1006
    new-instance v11, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$7;

    invoke-direct {v11, p0, v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$7;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    array-length v11, v7

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 1016
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    new-instance v11, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;

    invoke-direct {v11, p0, v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    :goto_3
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    new-instance v12, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$9;

    invoke-direct {v12, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$9;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1046
    .end local v0    # "btn1":Landroid/widget/Button;
    .end local v1    # "btn2":Landroid/widget/Button;
    .end local v2    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v4    # "isFirstEventInSeries":Z
    .end local v5    # "itemIndex":I
    .end local v7    # "items":[Ljava/lang/CharSequence;
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v9    # "notSynced":Z
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 952
    .restart local v4    # "isFirstEventInSeries":Z
    .restart local v5    # "itemIndex":I
    .restart local v9    # "notSynced":Z
    :cond_2
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/CharSequence;

    .restart local v7    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 955
    .end local v7    # "items":[Ljava/lang/CharSequence;
    :cond_3
    if-eqz v4, :cond_4

    .line 956
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/CharSequence;

    .line 960
    .restart local v7    # "items":[Ljava/lang/CharSequence;
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const v12, 0x7f0c0053

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v7, v5

    move v5, v6

    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    goto/16 :goto_0

    .line 958
    .end local v7    # "items":[Ljava/lang/CharSequence;
    :cond_4
    const/4 v11, 0x3

    new-array v7, v11, [Ljava/lang/CharSequence;

    .restart local v7    # "items":[Ljava/lang/CharSequence;
    goto :goto_4

    .line 975
    :catch_0
    move-exception v3

    .line 977
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1033
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "btn1":Landroid/widget/Button;
    .restart local v1    # "btn2":Landroid/widget/Button;
    .restart local v2    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .restart local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v10    # "view":Landroid/view/View;
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .end local v0    # "btn1":Landroid/widget/Button;
    .end local v1    # "btn2":Landroid/widget/Button;
    .end local v2    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v5    # "itemIndex":I
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v10    # "view":Landroid/view/View;
    .restart local v6    # "itemIndex":I
    :cond_6
    move v5, v6

    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    goto/16 :goto_1
.end method

.method public eventsChanged()V
    .locals 0

    .prologue
    .line 1447
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1499
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 1501
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    .line 1503
    :cond_0
    return-void
.end method

.method public getEditEventView()Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    return-object v0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 1472
    const-wide/16 v0, 0x200

    return-wide v0
.end method

.method public handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 1480
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 1485
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    .line 1489
    :cond_0
    return-void
.end method

.method isEmptyNewEvent()Z
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 1243
    const/4 v0, 0x0

    .line 1245
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1286
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1288
    const-string v1, "reminder_time_name"

    .line 1289
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1290
    .local v12, "label":Ljava/lang/String;
    const-string v1, "reminder_time_index"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1292
    .local v11, "index":I
    sget-object v1, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1293
    sget-object v1, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    :cond_0
    sput v11, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 1297
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1299
    const-string v1, "reminder_method_name"

    .line 1300
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1301
    .restart local v12    # "label":Ljava/lang/String;
    const-string v1, "reminder_method_index"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1303
    .restart local v11    # "index":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    if-eqz v1, :cond_2

    .line 1304
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1, v12}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setReminderMethod(Ljava/lang/String;)V

    .line 1306
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1, v11}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->onReminderMethodResult(I)V

    .line 1309
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/String;
    :cond_3
    add-int/lit16 v1, p1, -0x7d0

    if-ltz v1, :cond_7

    .line 1310
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1311
    if-eqz p3, :cond_5

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1313
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 1315
    const/4 v7, 0x0

    .line 1317
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1319
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1320
    const-string v1, "data1"

    .line 1321
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1320
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1322
    .local v13, "phone":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    add-int/lit16 v3, p1, -0x7d0

    invoke-virtual {v1, v3, v13}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->addMessageReceivers(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    .end local v13    # "phone":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 1332
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1333
    const/4 v7, 0x0

    .line 1417
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_5
    :goto_0
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1418
    return-void

    .line 1326
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1327
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    if-eqz v7, :cond_5

    .line 1332
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1333
    const/4 v7, 0x0

    goto :goto_0

    .line 1331
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 1332
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1333
    const/4 v7, 0x0

    .line 1335
    :cond_6
    throw v1

    .line 1341
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_7
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1343
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_8

    .line 1344
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPicturePathText()V

    .line 1347
    :cond_8
    :try_start_2
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v10, "i":Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/zcalendar/picture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1353
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1354
    .end local v10    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v9

    .line 1355
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1359
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1360
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1361
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1363
    .restart local v2    # "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1365
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1367
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1368
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setImageFilePath(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1374
    :cond_9
    if-eqz v8, :cond_a

    .line 1375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1376
    const/4 v8, 0x0

    .line 1380
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_a
    :goto_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setPicturePathText()V

    goto/16 :goto_0

    .line 1370
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v9

    .line 1372
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1374
    if-eqz v8, :cond_a

    .line 1375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1376
    const/4 v8, 0x0

    goto :goto_1

    .line 1374
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_b

    .line 1375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1376
    const/4 v8, 0x0

    .line 1378
    :cond_b
    throw v1

    .line 1384
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1385
    if-eqz p3, :cond_5

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1387
    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 1389
    const/4 v7, 0x0

    .line 1391
    .restart local v7    # "cur":Landroid/database/Cursor;
    :try_start_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1393
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1394
    const-string v1, "data1"

    .line 1396
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1395
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1402
    :cond_c
    if-eqz v7, :cond_5

    .line 1403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1404
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1399
    :catch_3
    move-exception v9

    .line 1400
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1402
    if-eqz v7, :cond_5

    .line 1403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1404
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1402
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    if-eqz v7, :cond_d

    .line 1403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1404
    const/4 v7, 0x0

    .line 1406
    :cond_d
    throw v1

    .line 1341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 681
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 682
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    .line 683
    const-string v0, "EditEventFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;-><init>(Landroid/content/Context;Lcn/nubia/calendar/model/CalendarEventModel;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    .line 685
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    .line 686
    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 687
    const-string v0, "input_method"

    .line 688
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 690
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->alarmManager:Landroid/app/AlarmManager;

    .line 691
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 811
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 812
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUseCustomActionBar:Z

    .line 815
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->showCustomActionBar()V

    .line 822
    :goto_0
    return-void

    .line 819
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUseCustomActionBar:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 785
    if-eqz p1, :cond_4

    .line 786
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const-string v0, "key_model"

    .line 788
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mRestoreModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 790
    :cond_0
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    const-string v0, "key_edit_state"

    .line 792
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 794
    :cond_1
    const-string v0, "key_edit_on_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    const-string v0, "key_edit_on_launch"

    .line 796
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 798
    :cond_2
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 799
    const-string v0, "key_event"

    .line 800
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    .line 802
    :cond_3
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    const-string v0, "key_read_only"

    .line 804
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    .line 807
    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 826
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 827
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 718
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->inflater:Landroid/view/LayoutInflater;

    .line 719
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    if-eqz v2, :cond_1

    .line 720
    const v2, 0x7f03004e

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    .line 724
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 725
    sget-object v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->CREATE_EVENT_ACTION:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIntent:Landroid/content/Intent;

    sget-object v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->KEY_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 728
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    const v3, 0x7f11004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 729
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 734
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->startQuery()V

    .line 735
    const v2, 0x7f1101fa

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mtitleView:Landroid/widget/TextView;

    .line 736
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mUseCustomActionBar:Z

    .line 737
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->showCustomActionBar()V

    .line 738
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    return-object v2

    .line 722
    :cond_1
    const v2, 0x7f03004a

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->exit()V

    .line 1431
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 1433
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1436
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1437
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModifyDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1439
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1441
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->cleanUp()V

    .line 1442
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->cleanup()V

    .line 767
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 769
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 770
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->view:Landroid/view/View;

    .line 772
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->inflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_2

    .line 773
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->inflater:Landroid/view/LayoutInflater;

    .line 775
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 777
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_3

    .line 778
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    .line 780
    :cond_3
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 698
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    .line 701
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandlerMainThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandlerMainThread:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->releasemService()V

    .line 707
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    .line 713
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 1425
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1426
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 757
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 759
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1451
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    .line 1452
    const-string v0, "key_model"

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1453
    const-string v0, "key_edit_state"

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1454
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_1

    .line 1455
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    .line 1456
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v2, v1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->id:J

    .line 1457
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->start:J

    .line 1460
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEvent:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->end:J

    .line 1464
    :cond_1
    const-string v0, "key_edit_on_launch"

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1466
    const-string v0, "key_event"

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mEventBundle:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1467
    const-string v0, "key_read_only"

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1468
    return-void
.end method

.method public saveButtonClick()V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 839
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyEvent(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 840
    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canRespond(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsSaved:Z

    if-nez v0, :cond_2

    .line 843
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mIsSaved:Z

    .line 844
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    if-nez v0, :cond_1

    .line 845
    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 847
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 849
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    .line 868
    :cond_2
    :goto_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    return-void

    .line 855
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canAddReminders(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 856
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->saveReminders()V

    .line 858
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 860
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 863
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 865
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOnDone:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    goto :goto_0
.end method
