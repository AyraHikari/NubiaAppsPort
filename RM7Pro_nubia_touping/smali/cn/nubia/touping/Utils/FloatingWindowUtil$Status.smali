.class Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;
.super Ljava/lang/Object;
.source "FloatingWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/FloatingWindowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Status"
.end annotation


# instance fields
.field quality:I

.field final synthetic this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

.field timeTick:J


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;JI)V
    .locals 0
    .param p2, "timeTick"    # J
    .param p4, "quality"    # I

    .prologue
    .line 367
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-wide p2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->timeTick:J

    .line 369
    iput p4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->quality:I

    .line 370
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeTick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->timeTick:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
