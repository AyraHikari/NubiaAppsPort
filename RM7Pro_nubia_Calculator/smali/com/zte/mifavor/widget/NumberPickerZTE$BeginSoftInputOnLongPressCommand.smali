.class Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 2676
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2680
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 2681
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1802(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    return-void
.end method
