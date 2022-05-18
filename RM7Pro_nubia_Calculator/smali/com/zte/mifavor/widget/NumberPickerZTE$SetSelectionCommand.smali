.class Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private final mInputText:Landroid/widget/EditText;

.field private mPosted:Z

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 2442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2443
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 2457
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mPosted:Z

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 2459
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mPosted:Z

    :cond_0
    return-void
.end method

.method public post(II)V
    .locals 0

    .line 2447
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I

    .line 2448
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I

    .line 2450
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mPosted:Z

    if-nez p1, :cond_0

    .line 2451
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 2452
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mPosted:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 2465
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mPosted:Z

    .line 2466
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I

    if-lt v0, v1, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I

    iget p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method
