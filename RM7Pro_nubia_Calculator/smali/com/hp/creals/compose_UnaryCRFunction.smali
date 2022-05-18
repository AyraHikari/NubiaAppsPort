.class Lcom/hp/creals/compose_UnaryCRFunction;
.super Lcom/hp/creals/UnaryCRFunction;
.source "UnaryCRFunction.java"


# instance fields
.field f1:Lcom/hp/creals/UnaryCRFunction;

.field f2:Lcom/hp/creals/UnaryCRFunction;


# direct methods
.method constructor <init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/UnaryCRFunction;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/hp/creals/UnaryCRFunction;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/hp/creals/compose_UnaryCRFunction;->f1:Lcom/hp/creals/UnaryCRFunction;

    iput-object p2, p0, Lcom/hp/creals/compose_UnaryCRFunction;->f2:Lcom/hp/creals/UnaryCRFunction;

    return-void
.end method


# virtual methods
.method public execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/hp/creals/compose_UnaryCRFunction;->f1:Lcom/hp/creals/UnaryCRFunction;

    iget-object p0, p0, Lcom/hp/creals/compose_UnaryCRFunction;->f2:Lcom/hp/creals/UnaryCRFunction;

    invoke-virtual {p0, p1}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method
