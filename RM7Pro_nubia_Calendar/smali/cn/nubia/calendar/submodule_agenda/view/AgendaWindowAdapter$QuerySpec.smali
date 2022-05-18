.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field id:J

.field orignalQueryType:I

.field queryStartMillis:J

.field queryType:I

.field searchQuery:Ljava/lang/String;

.field start:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "queryType"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 265
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->orignalQueryType:I

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    .line 267
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    if-ne p0, p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 295
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 297
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 298
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .line 299
    .local v0, "other":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 301
    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 303
    goto :goto_0

    .line 306
    :cond_5
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_6

    .line 307
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 308
    goto :goto_0

    .line 311
    :cond_6
    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_0

    move v1, v2

    .line 312
    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    .line 271
    const/16 v2, 0x1f

    .line 272
    .local v2, "prime":I
    const/4 v3, 0x1

    .line 273
    .local v3, "result":I
    iget v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v4, 0x1f

    .line 274
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v3, v4, v5

    .line 276
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    add-int v3, v4, v5

    .line 277
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    add-int v3, v4, v5

    .line 278
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 279
    mul-int/lit8 v4, v3, 0x1f

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v3, v4, v5

    .line 281
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_1

    .line 282
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 283
    .local v0, "goToTimeMillis":J
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v6, v0, v10

    xor-long/2addr v6, v0

    long-to-int v5, v6

    add-int v3, v4, v5

    .line 286
    .end local v0    # "goToTimeMillis":J
    :cond_1
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    long-to-int v5, v6

    add-int v3, v4, v5

    .line 287
    return v3
.end method
