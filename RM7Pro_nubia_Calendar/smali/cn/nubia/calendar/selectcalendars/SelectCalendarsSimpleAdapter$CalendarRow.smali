.class public Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
.super Ljava/lang/Object;
.source "SelectCalendarsSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarRow"
.end annotation


# instance fields
.field accountType:Ljava/lang/String;

.field color:I

.field displayName:Ljava/lang/String;

.field id:J

.field ownerAccount:Ljava/lang/String;

.field selected:Z

.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field public type:I


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->this$0:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarRow [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
