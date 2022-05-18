.class public Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
.super Ljava/lang/Object;
.source "AsyncQueryServiceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/AsyncQueryServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OperationInfo"
.end annotation


# instance fields
.field public authority:Ljava/lang/String;

.field public cookie:Ljava/lang/Object;

.field public cpo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field public delayMillis:J

.field public handler:Landroid/os/Handler;

.field private mScheduledTimeMillis:J

.field public op:I

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public resolver:Landroid/content/ContentResolver;

.field public result:Ljava/lang/Object;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public token:I

.field public uri:Landroid/net/Uri;

.field public values:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .prologue
    .line 66
    iget-wide v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    return-wide v0
.end method


# virtual methods
.method calculateScheduledTime()V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    .line 97
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 6
    .param p1, "another"    # Ljava/util/concurrent/Delayed;

    .prologue
    .line 108
    move-object v0, p1

    check-cast v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 109
    .local v0, "anotherArgs":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    iget-wide v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    iget-wide v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 112
    const/4 v1, -0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equivalent(Lcn/nubia/calendar/AsyncQueryService$Operation;)Z
    .locals 2
    .param p1, "o"    # Lcn/nubia/calendar/AsyncQueryService$Operation;

    .prologue
    .line 166
    iget v0, p1, Lcn/nubia/calendar/AsyncQueryService$Operation;->token:I

    iget v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/calendar/AsyncQueryService$Operation;->op:I

    iget v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 101
    iget-wide v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "OperationInfo [\n\t token= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ",\n\t op= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    invoke-static {v1}, Lcn/nubia/calendar/AsyncQueryService$Operation;->opToChar(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ",\n\t uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ",\n\t authority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ",\n\t delayMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ",\n\t mScheduledTimeMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ",\n\t resolver= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ",\n\t handler= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ",\n\t projection= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ",\n\t selection= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ",\n\t selectionArgs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ",\n\t orderBy= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ",\n\t result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ",\n\t cookie= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ",\n\t values= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ",\n\t cpo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
