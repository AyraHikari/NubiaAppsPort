.class public Lcn/nubia/deskclock/database/CountDownSPUtils;
.super Ljava/lang/Object;
.source "CountDownSPUtils.java"


# static fields
.field public static final COUNTDOWN_FIRST_LAUNCHER:Ljava/lang/String; = "first_launcher"

.field public static final COUNTDOWN_NOTI_FILE_NAME:Ljava/lang/String; = "notifcation_time_pref"

.field public static final COUNTDOWN_PREF_FILE_NAME:Ljava/lang/String; = "time_pref"

.field private static final DEBUG:Z = true

.field public static final INDEX_OF_COUNTDOWNS:Ljava/lang/String; = "countdown_index_"

.field public static final NUMBER_OF_COUNTDOWNS:Ljava/lang/String; = "countdown_num"

.field public static final REF_ASSISTANT_START_CD_STATUS:Ljava/lang/String; = "assistant_start_cd_staus"

.field public static final REF_ASSISTANT_START_CD_TIME:Ljava/lang/String; = "assistant_start_cd_time"

.field private static final TAG:Ljava/lang/String; = "CountDownSPUtils"

.field public static final THEME_BLACK:Ljava/lang/String; = "nubia.theme.black"

.field public static final THEME_WHITE:Ljava/lang/String; = "nubia.theme.white"

.field private static mAssistantStartCountdownStatus:Z

.field private static mIsResetCountDown:Z

.field private static mTimerTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sput-boolean v1, Lcn/nubia/deskclock/database/CountDownSPUtils;->mIsResetCountDown:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mTimerTitle:Ljava/lang/String;

    .line 34
    sput-boolean v1, Lcn/nubia/deskclock/database/CountDownSPUtils;->mAssistantStartCountdownStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountdownSharedPrefereces(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "time_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getIsResetCountDown()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mIsResetCountDown:Z

    return v0
.end method

.method public static getTimeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mTimerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static getmAssistantStartCountdownStatus()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mAssistantStartCountdownStatus:Z

    return v0
.end method

.method public static loadCountdownToList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/CountItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 76
    const-string v5, "time_pref"

    const-string v6, "countdown_num"

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    .line 76
    invoke-static {v5, v6, v7, v8}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 78
    .local v4, "size":I
    const-string v5, "CountDownSPUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadCountdownToList: size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "cil":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/CountItem;>;"
    if-eq v4, v9, :cond_0

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 83
    const-string v5, "time_pref"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countdown_index_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v4, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 85
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    .line 83
    invoke-static {v5, v6, v7, v8}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 86
    .local v3, "second":I
    new-instance v0, Lcn/nubia/deskclock/model/CountItem;

    invoke-direct {v0, v2, v3}, Lcn/nubia/deskclock/model/CountItem;-><init>(II)V

    .line 87
    .local v0, "ci":Lcn/nubia/deskclock/model/CountItem;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "ci":Lcn/nubia/deskclock/model/CountItem;
    .end local v2    # "i":I
    .end local v3    # "second":I
    :cond_0
    return-object v1
.end method

.method public static readAssisStatusFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v1, "time_pref"

    const-string v2, "assistant_start_cd_staus"

    const/4 v3, -0x1

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 131
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 133
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static readAssisTimeFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v1, "time_pref"

    const-string v2, "assistant_start_cd_time"

    const/4 v3, 0x0

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 146
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static readCountDownTotalTimeFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v1, "time_pref"

    const-string v2, "total_second"

    const/4 v3, 0x0

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 167
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    .local v0, "second":I
    return v0
.end method

.method public static readStatusFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v1, "time_pref"

    const-string v2, "countdown_status"

    const/4 v3, -0x1

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 65
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static readTimeFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v1, "time_pref"

    const-string v2, "second"

    const/4 v3, 0x0

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 59
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "second":I
    return v0
.end method

.method public static readTimeNotficationFromPref(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v1, "notifcation_time_pref"

    const-string v2, "second"

    const/4 v3, 0x0

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 48
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    .local v0, "second":I
    return v0
.end method

.method public static removeAssisStatusToPref()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "time_pref"

    const-string v1, "assistant_start_cd_staus"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/Utils;->removeFromPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static removeAssisTimeToPref()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "time_pref"

    const-string v1, "assistant_start_cd_time"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/Utils;->removeFromPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static setIsResetCountDown(Z)V
    .locals 0
    .param p0, "isResetCountDown"    # Z

    .prologue
    .line 173
    sput-boolean p0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mIsResetCountDown:Z

    .line 174
    return-void
.end method

.method public static setTimeTitle(Ljava/lang/String;)V
    .locals 3
    .param p0, "timeTitle"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "CountDownSPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeTitle: timeTitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sput-object p0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mTimerTitle:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static setmAssistantStartCountdownStatus(Z)V
    .locals 0
    .param p0, "assistantStartCountdownStatus"    # Z

    .prologue
    .line 190
    sput-boolean p0, Lcn/nubia/deskclock/database/CountDownSPUtils;->mAssistantStartCountdownStatus:Z

    .line 191
    return-void
.end method

.method public static updateCountdownToPref(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/CountItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "mCountDownList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/CountItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "countDownList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/CountItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    const-string v5, "time_pref"

    const-string v6, "countdown_num"

    const/4 v7, -0x1

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    .line 104
    invoke-static {v5, v6, v7, v8}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 106
    .local v4, "originSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    .local v3, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 108
    const-string v6, "CountDownSPUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSecounds List = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/deskclock/model/CountItem;

    iget v5, v5, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 111
    const-string v5, "time_pref"

    const-string v6, "countdown_num"

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 111
    invoke-static {v5, v6, v7}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v5, "CountDownSPUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCountdownToPref: originSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; listSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 116
    move v2, v1

    .line 117
    .local v2, "index":I
    if-ge v1, v3, :cond_1

    .line 118
    const-string v6, "time_pref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countdown_index_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/deskclock/model/CountItem;

    iget v5, v5, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 118
    invoke-static {v6, v7, v5}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v5, "CountDownSPUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSecounds  index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "countdown_index_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "CountDownSPUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSecounds = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/deskclock/model/CountItem;

    iget v5, v5, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_1
    const-string v5, "time_pref"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countdown_index_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/Utils;->removeFromPref(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public static writeAssisStatusToPref(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # I

    .prologue
    .line 137
    const-string v0, "time_pref"

    const-string v1, "assistant_start_cd_staus"

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public static writeAssisTimeToPref(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # I

    .prologue
    .line 152
    const-string v0, "time_pref"

    const-string v1, "assistant_start_cd_time"

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static writeCountDownTotalTimeToPref(Landroid/content/Context;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 162
    const-string v0, "time_pref"

    const-string v1, "total_second"

    .line 163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public static writeCountdownToPref(Landroid/content/Context;Lcn/nubia/deskclock/model/CountItem;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countdown"    # Lcn/nubia/deskclock/model/CountItem;

    .prologue
    .line 94
    const-string v0, "time_pref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countdown_index_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "time_pref"

    const-string v1, "countdown_num"

    iget v2, p1, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    add-int/lit8 v2, v2, 0x1

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static writeStatusToPref(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # I

    .prologue
    .line 71
    const-string v0, "time_pref"

    const-string v1, "countdown_status"

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static writeTimeNotficationToPref(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "second"    # I

    .prologue
    .line 43
    const-string v0, "notifcation_time_pref"

    const-string v1, "second"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static writeTimeToPref(Landroid/content/Context;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 38
    const-string v0, "time_pref"

    const-string v1, "second"

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
