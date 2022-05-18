.class public Lcn/nubia/calendar/AsyncQueryService$Operation;
.super Ljava/lang/Object;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/AsyncQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field static final EVENT_ARG_BATCH:I = 0x5

.field static final EVENT_ARG_DELETE:I = 0x4

.field static final EVENT_ARG_INSERT:I = 0x2

.field static final EVENT_ARG_QUERY:I = 0x1

.field static final EVENT_ARG_UPDATE:I = 0x3


# instance fields
.field public op:I

.field public scheduledExecutionTime:J

.field public token:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static opToChar(I)C
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 97
    const/16 v0, 0x3f

    :goto_0
    return v0

    .line 87
    :pswitch_0
    const/16 v0, 0x51

    goto :goto_0

    .line 89
    :pswitch_1
    const/16 v0, 0x49

    goto :goto_0

    .line 91
    :pswitch_2
    const/16 v0, 0x55

    goto :goto_0

    .line 93
    :pswitch_3
    const/16 v0, 0x44

    goto :goto_0

    .line 95
    :pswitch_4
    const/16 v0, 0x42

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Operation [op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcn/nubia/calendar/AsyncQueryService$Operation;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcn/nubia/calendar/AsyncQueryService$Operation;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", scheduledExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-wide v2, p0, Lcn/nubia/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
