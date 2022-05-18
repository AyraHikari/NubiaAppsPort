.class public Lcn/nubia/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/common/OperationScheduler$Options;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "OperationScheduler_"


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "storage"    # Landroid/content/SharedPreferences;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # J

    .prologue
    .line 200
    iget-object v2, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    .local v0, "time":J
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 202
    move-wide v0, p2

    .line 203
    iget-object v2, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    :cond_0
    return-wide v0
.end method

.method public static parseOptions(Ljava/lang/String;Lcn/nubia/common/OperationScheduler$Options;)Lcn/nubia/common/OperationScheduler$Options;
    .locals 10
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "options"    # Lcn/nubia/common/OperationScheduler$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x8

    .line 97
    const-string v2, " +"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v0, v3, v2

    .line 98
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string v5, "backoff="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    const/16 v5, 0x2b

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 101
    .local v1, "plus":I
    if-gez v1, :cond_1

    .line 102
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->backoffFixedMillis:J

    goto :goto_1

    .line 104
    :cond_1
    if-le v1, v8, :cond_2

    .line 105
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 107
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    goto :goto_1

    .line 109
    .end local v1    # "plus":I
    :cond_3
    const-string v5, "max="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    goto :goto_1

    .line 111
    :cond_4
    const-string v5, "min="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->minTriggerMillis:J

    goto :goto_1

    .line 113
    :cond_5
    const-string v5, "period="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 116
    :cond_6
    invoke-static {v0}, Lcn/nubia/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 119
    .end local v0    # "param":Ljava/lang/String;
    :cond_7
    return-object p1
.end method

.method private static parseSeconds(Ljava/lang/String;)J
    .locals 2
    .param p0, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAttemptTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 185
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    .line 186
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_lastErrorTimeMillis"

    .line 187
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 185
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTimeMillis()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcn/nubia/common/OperationScheduler$Options;)J
    .locals 28
    .param p1, "options"    # Lcn/nubia/common/OperationScheduler$Options;

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v22, "OperationScheduler_enabledState"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 137
    .local v4, "enabledState":Z
    if-nez v4, :cond_1

    const-wide v18, 0x7fffffffffffffffL

    .line 166
    :cond_0
    :goto_0
    return-wide v18

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v22, "OperationScheduler_permanentError"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 140
    .local v16, "permanentError":Z
    if-eqz v16, :cond_2

    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 146
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v22, "OperationScheduler_errorCount"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 147
    .local v5, "errorCount":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v14

    .line 148
    .local v14, "now":J
    const-string v17, "OperationScheduler_lastSuccessTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v15}, Lcn/nubia/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v8

    .line 149
    .local v8, "lastSuccessTimeMillis":J
    const-string v17, "OperationScheduler_lastErrorTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v15}, Lcn/nubia/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v6

    .line 150
    .local v6, "lastErrorTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v22, "OperationScheduler_triggerTimeMillis"

    const-wide v24, 0x7fffffffffffffffL

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 151
    .local v20, "triggerTimeMillis":J
    const-string v17, "OperationScheduler_moratoriumSetTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v15}, Lcn/nubia/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v10

    .line 152
    .local v10, "moratoriumSetMillis":J
    const-string v17, "OperationScheduler_moratoriumTimeMillis"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v12

    .line 155
    .local v12, "moratoriumTimeMillis":J
    move-wide/from16 v18, v20

    .line 156
    .local v18, "time":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_3

    .line 157
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 160
    :cond_3
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 161
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->minTriggerMillis:J

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 162
    if-lez v5, :cond_0

    .line 163
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->backoffFixedMillis:J

    move-wide/from16 v22, v0

    add-long v22, v22, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    move-wide/from16 v24, v0

    int-to-long v0, v5

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto/16 :goto_0
.end method

.method public onPermanentError()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 315
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->resetTransientError()V

    .line 275
    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->resetPermanentError()V

    .line 276
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    .line 277
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    .line 278
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    .line 279
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    .line 280
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    .line 281
    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 282
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    .line 290
    iget-object v1, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v1, "OperationScheduler_errorCount"

    iget-object v2, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    .line 293
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 292
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 295
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 323
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 305
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 267
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 9
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 244
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 245
    .local v0, "ms":J
    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcn/nubia/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "ms":J
    :goto_0
    return v8

    .line 247
    :catch_0
    move-exception v2

    .local v2, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 229
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumTimeMillis"

    .line 230
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumSetTimeMillis"

    .line 231
    invoke-virtual {p0}, Lcn/nubia/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 232
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 217
    iget-object v0, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcn/nubia/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[OperationScheduler:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "out":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, "key":Ljava/lang/String;
    const-string v4, "OperationScheduler_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    const-string v4, "TimeMillis"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 334
    .local v2, "time":Landroid/text/format/Time;
    iget-object v4, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 335
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    .end local v2    # "time":Landroid/text/format/Time;
    :cond_1
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 343
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
