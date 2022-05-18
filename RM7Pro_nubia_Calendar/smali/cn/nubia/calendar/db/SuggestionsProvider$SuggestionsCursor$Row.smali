.class Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mIntentData:Landroid/net/Uri;

.field private mRowNumber:I

.field private mTitle:Ljava/lang/String;

.field final synthetic this$1:Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p2, "row"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "intentData"    # Landroid/net/Uri;

    .prologue
    .line 191
    iput-object p1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->this$1:Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mData:Ljava/lang/String;

    .line 193
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mTitle:Ljava/lang/String;

    .line 194
    iput p2, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    .line 195
    iput-object p5, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mIntentData:Landroid/net/Uri;

    .line 196
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;

    .prologue
    .line 185
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    return v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f020083

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mIntentData:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->mTitle:Ljava/lang/String;

    return-object v0
.end method
