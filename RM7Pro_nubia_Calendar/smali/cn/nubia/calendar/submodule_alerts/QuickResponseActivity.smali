.class public Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;
.super Landroid/app/ListActivity;
.source "QuickResponseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;
    }
.end annotation


# static fields
.field public static final EXTRA_EVENT_ID:Ljava/lang/String; = "eventId"

.field private static final TAG:Ljava/lang/String; = "QuickResponseActivity"

.field static mEventId:J


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 123
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 124
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 61
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v4, "eventId"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mEventId:J

    .line 67
    sget-wide v4, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mEventId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 68
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "responses":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 80
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 83
    iget-object v4, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v5, v3, v1

    aput-object v5, v4, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 88
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0300ae

    iget-object v6, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 167
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v0, v1, p3

    .line 109
    :cond_0
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;

    sget-wide v2, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->mEventId:J

    invoke-direct {v1, p0, v2, v3, v0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;-><init>(Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;JLjava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->start()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v1, v3

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
