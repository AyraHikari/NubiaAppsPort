.class public abstract Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialPickerDialogFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_BOUNDS_KEY:Ljava/lang/String; = "CALENDAR_BOUNDS_KEY"

.field public static final CANCEL_BUTTON_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_BOUNDS:Lcom/google/android/material/picker/CalendarBounds;

.field public static final DEFAULT_END:Lcom/google/android/material/picker/Month;

.field public static final DEFAULT_START:Lcom/google/android/material/picker/Month;

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID"

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"


# instance fields
.field private calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

.field private gridSelector:Lcom/google/android/material/picker/GridSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/GridSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private header:Landroid/widget/TextView;

.field private materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendar<",
            "TS;>;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private themeResId:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private titleTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/material/picker/Month;->create(II)Lcom/google/android/material/picker/Month;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_START:Lcom/google/android/material/picker/Month;

    const/16 v0, 0x834

    const/16 v1, 0xb

    .line 63
    invoke-static {v0, v1}, Lcom/google/android/material/picker/Month;->create(II)Lcom/google/android/material/picker/Month;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_END:Lcom/google/android/material/picker/Month;

    .line 69
    sget-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_START:Lcom/google/android/material/picker/Month;

    sget-object v1, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_END:Lcom/google/android/material/picker/Month;

    .line 70
    invoke-static {v0, v1}, Lcom/google/android/material/picker/CalendarBounds;->create(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_BOUNDS:Lcom/google/android/material/picker/CalendarBounds;

    const-string v0, "CONFIRM_BUTTON_TAG"

    .line 79
    sput-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    .line 83
    sput-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)Lcom/google/android/material/picker/MaterialCalendar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader(Ljava/lang/Object;)V

    return-void
.end method

.method protected static addArgsToBundle(Landroid/os/Bundle;ILcom/google/android/material/picker/CalendarBounds;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "THEME_RES_ID"

    .line 128
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CALENDAR_BOUNDS_KEY"

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "TITLE_TEXT_RES_ID_KEY"

    .line 130
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static getThemeResource(Landroid/content/Context;II)I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    if-eqz p2, :cond_0

    return p2

    .line 138
    :cond_0
    const-class p2, Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    .line 139
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateHeader(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected abstract createGridSelector()Lcom/google/android/material/picker/GridSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/GridSelector<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultThemeAttr()I
.end method

.method protected abstract getHeaderText(Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getMaterialCalendar()Lcom/google/android/material/picker/MaterialCalendar;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendar<",
            "+TS;>;"
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    return-object p0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 252
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getDefaultThemeAttr()I

    move-result v1

    const-string v2, "THEME_RES_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 159
    invoke-static {v0, v1, v2}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getThemeResource(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/GridSelector;

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    const-string v0, "CALENDAR_BOUNDS_KEY"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/CalendarBounds;

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->titleTextResId:I

    .line 165
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    if-nez p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->createGridSelector()Lcom/google/android/material/picker/GridSelector;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    iget v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    iget-object v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-static {p1, v0, v1}, Lcom/google/android/material/picker/MaterialCalendar;->newInstance(Lcom/google/android/material/picker/GridSelector;ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialCalendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-direct {p1, v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 183
    sget p2, Lcom/google/android/material/R$id;->mtrl_picker_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    .line 184
    sget p2, Lcom/google/android/material/R$id;->mtrl_picker_title_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget p3, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->titleTextResId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 186
    sget p2, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 187
    sget-object p3, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 188
    new-instance p3, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    sget p2, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 198
    sget-object p3, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 199
    new-instance p3, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID"

    .line 145
    iget v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    .line 146
    iget-object v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_BOUNDS_KEY"

    .line 147
    iget-object v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 148
    iget p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->titleTextResId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 220
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 221
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendar;->getSelection()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    new-instance v1, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialCalendar;->addOnSelectionChangedListener(Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendar;->clearOnSelectionChangedListeners()V

    .line 234
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 212
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 214
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendar:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-virtual {p1, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 215
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method
