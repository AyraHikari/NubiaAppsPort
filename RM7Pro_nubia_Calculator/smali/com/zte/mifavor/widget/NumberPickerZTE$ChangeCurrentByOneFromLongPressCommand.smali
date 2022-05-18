.class Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 2659
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2663
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2668
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2669
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1600(Lcom/zte/mifavor/widget/NumberPickerZTE;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
