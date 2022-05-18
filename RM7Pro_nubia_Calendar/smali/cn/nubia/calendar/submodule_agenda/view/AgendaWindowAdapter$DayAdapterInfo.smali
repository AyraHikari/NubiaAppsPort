.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayAdapterInfo"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

.field end:I

.field offset:I

.field size:I

.field start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .line 338
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 345
    .local v1, "time":Landroid/text/format/Time;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 347
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 348
    const-string v2, "Start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 350
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 351
    const-string v2, " End:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v2, " Offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v2, " Size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
